describe "Split screen functionality" do
  tests PM::SplitViewController

  # Override controller to properly instantiate
  def controller
    @app ||= TestDelegate.new
    @master = MasterScreen.new(nav_bar: true)
    @detail = DetailScreen.new(nav_bar: true)
    @controller ||= @app.create_split_screen @master, @detail
  end

  before do
    UIView.setAnimationDuration 0.01
    rotate_device to: :landscape, button: :right
  end

  after do
    rotate_device to: :portrait, button: :bottom
  end

  it "should allow opening a detail view from the master view" do

    @master.open BasicScreen.new(nav_bar: true), in_detail: true

    wait 0.75 do
      view("Master").should.be.kind_of UINavigationItemView
      view("Basic").should.be.kind_of UINavigationItemView
      views(UINavigationItemView).each { |v| v.title.should.not == "Detail" }
    end

  end

  it "should allow opening another view from the master view" do

    @master.open BasicScreen

    wait 0.75 do
      view("Basic").should.be.kind_of UINavigationItemView
      view("Detail").should.be.kind_of UINavigationItemView
    end

  end

  it "should allow opening a master view from the detail view" do

    @detail.open BasicScreen.new(nav_bar: true), in_master: true

    wait 0.75 do
      view("Basic").should.be.kind_of UINavigationItemView
      view("Detail").should.be.kind_of UINavigationItemView
      views(UINavigationItemView).each { |v| v.title.should.not == "Master" }
    end

  end

  it "should allow opening another view from the detail view" do

    @detail.open BasicScreen

    wait 0.75 do
      view("Basic").should.be.kind_of UINavigationItemView
      view("Master").should.be.kind_of UINavigationItemView
    end

  end

  it "should override the title on the button" do
    rotate_device to: :portrait, button: :bottom

    test_title = "Test Title"
    @alt_controller = @app.open_split_screen @master, @detail, button_title: test_title
    @detail.navigationItem.leftBarButtonItem.title.should == test_title
  end

  it "should override the default swipe action, that reveals the menu" do
    rotate_device to: :portrait, button: :bottom

    @alt_controller = @app.open_split_screen @master, @detail, swipe: false
    @app.home_screen.presentsWithGesture.should == false
  end

end
