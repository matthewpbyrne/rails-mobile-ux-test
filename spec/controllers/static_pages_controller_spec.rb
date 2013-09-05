require "spec_helper"

describe StaticPagesController do
  render_views

  describe "GET #home" do    
    describe "desktop" do
      it "renders the home template" do
        get :home
        response.body.should include("Desktop view")
        response.body.should include("Switch to Mobile Format")
      end
    end
    
    describe "mobile alternatives" do
      describe "sidepanel" do    
        it "should render the mobile page with sidepanel only" do
          set_session_override(:force_mobile)
          get :home, {:social_share => "sidepanel"}
          response.body.should include("Mobile UX test app")
          response.body.should include("#left-panel")
          response.body.should_not include("footer")
        end
      end
      
      describe "footer" do
        it "should render the mobile page with footer only" do
          set_session_override(:force_mobile)
          get :home, {:social_share => "footer"}
          response.body.should include("Mobile UX test app")
          response.body.should_not include("#left-panel")
          response.body.should include("footer")
        end      
      end
    end
  end
  
  describe "GET #social_dialog" do
    it "should render the dialog for social sharing" do
      set_session_override(:force_mobile)
      get :social_dialog
      response.body.should include("Share this awesome content with your friends?")
    end
  end
end
