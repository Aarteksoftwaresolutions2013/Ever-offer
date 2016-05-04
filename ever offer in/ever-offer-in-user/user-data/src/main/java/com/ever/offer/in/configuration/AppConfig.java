package com.ever.offer.in.configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.ever.offer.in")
public class AppConfig extends WebMvcConfigurerAdapter {

    /*
     * @Author Patidar This method is to registered resources folder inside webapp for js and css (non-Javadoc)
     * 
     * @see org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter
     * #addResourceHandlers(org.springframework.web.servlet.config.annotation. ResourceHandlerRegistry)
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    /**
     * <code>Resolves views selected for rendering by @Controllers to tiles resources in the Apache TilesConfigurer bean</code>
     */
    @Bean
    public TilesViewResolver getTilesViewResolver() {
        TilesViewResolver tilesViewResolver = new TilesViewResolver();
        tilesViewResolver.setViewClass(TilesView.class);
        return tilesViewResolver;
    }

    /**
     * <code>Configures Apache tiles definitions bean used by Apache TilesViewResolver to resolve views selected for rendering by @Controllers</code>
     */
    @Bean
    public TilesConfigurer getTilesConfigurer() {
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setCheckRefresh(true);
        tilesConfigurer.setDefinitionsFactoryClass(TilesDefinitionsConfig.class);
        TilesDefinitionsConfig.addDefinitions();
        return tilesConfigurer;
    }

    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver getCommonsMultipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(20971520); // 20MB
        multipartResolver.setMaxInMemorySize(1048576); // 1MB
        return multipartResolver;
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource resourceMessage = new ResourceBundleMessageSource();
        resourceMessage.setBasename("message");
        return resourceMessage;
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoggingInterceptor()).addPathPatterns("/**").excludePathPatterns("/home*")
                        .excludePathPatterns("/registration*").excludePathPatterns("/save")
                        .excludePathPatterns("/terms*").excludePathPatterns("/login*").excludePathPatterns("/signIn*")
                        .excludePathPatterns("/cityList").excludePathPatterns("/verifyUsername*")
                        .excludePathPatterns("/complementaryCode*").excludePathPatterns("/termsAndconditon*")
                        .excludePathPatterns("/viewOffer*").excludePathPatterns("/cancellationAndRefund*")
                        .excludePathPatterns("/commerceAndIncorp*").excludePathPatterns("/privacyPolicy*")
                        .excludePathPatterns("/productsAndServices*").excludePathPatterns("/returnPolicy*")
                        .excludePathPatterns("/shipAndDeliveryPolicy*").excludePathPatterns("/promotionalEvents*")

                        .excludePathPatterns("/contact*").excludePathPatterns("/saveFeedback*")
                        .excludePathPatterns("/promoteBusiness*").excludePathPatterns("/whatisEveroffer*")
                        .excludePathPatterns("/whatWeOffer*").excludePathPatterns("/aboutUs*")
                        .excludePathPatterns("/careers*").excludePathPatterns("/map*").excludePathPatterns("/showMap*")
                        .excludePathPatterns("/showMapByCity*").excludePathPatterns("/showAllOffersOnMap*")
                        .excludePathPatterns("/showOfferDetails*").excludePathPatterns("/addOffer*")
                        .excludePathPatterns("/saveOffer*").excludePathPatterns("/viewOffer*")

                        .excludePathPatterns("/cancellation*").excludePathPatterns("/commerce*")
                        .excludePathPatterns("/privacy*").excludePathPatterns("/products*")
                        .excludePathPatterns("/return*").excludePathPatterns("/ship*").excludePathPatterns("/payment*")
                        .excludePathPatterns("/payumoney*").excludePathPatterns("/customerSignIn")
                        .excludePathPatterns("/customerRegistration").excludePathPatterns("/allOfferDetails")
                        .excludePathPatterns("/success").excludePathPatterns("/makePayment")
                        .excludePathPatterns("/confirmCustomer").excludePathPatterns("/updateCustomerProfile")
                        .excludePathPatterns("/forgotPassword").excludePathPatterns("/allCities")
                        .excludePathPatterns("/offerDetailByCity").excludePathPatterns("/cityEvents*")
                        .excludePathPatterns("/feedback*").excludePathPatterns("/promotionalImage*")
                        .excludePathPatterns("/checkOfferStatus*");

    }
}
