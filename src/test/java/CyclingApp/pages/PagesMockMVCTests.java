package CyclingApp.pages;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class PagesMockMVCTests {
    @Autowired
    private MockMvc mockMvc;

    //region Home Page

    @Test
    public void homePageTest() throws Exception {
        this.mockMvc.perform(get("/pages/home"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Home")));
    }

    //endregion

    //region Workouts Page

    @Test
    public void workoutsPageAuthenticationSuccessTest() throws Exception {
        this.mockMvc.perform(get("/pages/workouts")
                .with(SecurityMockMvcRequestPostProcessors.user("user").roles("USER")))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Browse Workouts")));
    }

    @Test
    public void workoutsPageAuthenticationFailureTest() throws Exception {
        this.mockMvc.perform(get("/pages/workouts"))
                .andDo(print())
                .andExpect(status().is3xxRedirection());
    }

    //endregion

    //region Builder Page

    @Test
    public void builderPageAuthenticationSuccessTest() throws Exception {
        this.mockMvc.perform(get("/pages/builder")
                        .with(SecurityMockMvcRequestPostProcessors.user("member").roles("MEMBER")))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Workout Builder")));
    }

    @Test
    public void builderPageDeniedTest() throws Exception {
        this.mockMvc.perform(get("/pages/builder")
                        .with(SecurityMockMvcRequestPostProcessors.user("user").roles("USER")))
                .andDo(print())
                .andExpect(status().isForbidden());
    }

    @Test
    public void builderPageAuthenticationFailureTest() throws Exception {
        this.mockMvc.perform(get("/pages/builder"))
                .andDo(print())
                .andExpect(status().is3xxRedirection());
    }

    //endregion

    //region Profile Page

    @Test
    public void profilePageAuthenticationSuccessTest() throws Exception {
        this.mockMvc.perform(get("/pages/profile/member")
                        .with(SecurityMockMvcRequestPostProcessors.user("member").roles("MEMBER")))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Profile")));
    }

    @Test
    public void profilePageDeniedTest() throws Exception {
        this.mockMvc.perform(get("/pages/profile/admin")
                        .with(SecurityMockMvcRequestPostProcessors.user("member").roles("MEMBER")))
                .andDo(print())
                .andExpect(status().isForbidden());
    }

    @Test
    public void profilePageAuthenticationFailureTest() throws Exception {
        this.mockMvc.perform(get("/pages/profile/member"))
                .andDo(print())
                .andExpect(status().is3xxRedirection());
    }

    //endregion


    //region Admin Page

    @Test
    public void adminPageAuthenticationSuccessTest() throws Exception {
        this.mockMvc.perform(get("/pages/admin")
                        .with(SecurityMockMvcRequestPostProcessors.user("admin").roles("ADMIN")))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Admin")));
    }

    @Test
    public void adminPageDeniedTest() throws Exception {
        this.mockMvc.perform(get("/pages/admin")
                        .with(SecurityMockMvcRequestPostProcessors.user("member").roles("MEMBER")))
                .andDo(print())
                .andExpect(status().isForbidden());
    }

    @Test
    public void adminPageAuthenticationFailureTest() throws Exception {
        this.mockMvc.perform(get("/pages/admin"))
                .andDo(print())
                .andExpect(status().is3xxRedirection());
    }

    //endregion

}
