<template>
  <div>
    <section id="signup-section" class="signup-section section">
      <div class="section-inner">
        <div class="container text-center">
          <div class="counter-container">
          </div><!--//counter-container-->

          <h2 class="counter-desc">Customers Worldwide</h2>

          <div class="form-wrapper">
            <h2 class="form-title">Request Free Mugshot Removal Analysis</h2>
            <div class="form-box">
              <h3 class="form-heading">How to Remove My Mugshot</h3>
              <div class="form-desc">How to Remove My Mugshot How to Remove Arrest Records and Arrest Mugshots from the internet in 72 hours. We offer a complete removal solution for arrest records online. We can help you Remove Your Mugshot in 72 hours. Call us today</div>
              <ul class="social-buttons list-unstyled">
                <li><a href="#" class="btn btn-social"><i class="fa fa-phone" aria-hidden="true"></i><span class="btn-text">Call Us Today</span></a></li>
              </ul><!--//social-buttons-->
              <div class="divider">
                <span class="or-text">OR</span>
              </div><!--//divider-->
              <form class="signup-form" v-on:submit.prevent="validateBeforeSubmit">
                <div class="row">
                  <div class="form-group col-12 col-md-6">
                    <label for="firstname" class="sr-only">First Name</label>
                    <input type="text" class="form-control" id="firstname" name="firstname"
                    placeholder="First Name" v-model="form.first_name">
                  </div><!--//form-group-->
                  <div class="form-group col-12 col-md-6">
                    <label for="lastname" class="sr-only">Last Name</label>
                    <input type="text" class="form-control" id="lastname" name="lastname"
                    placeholder="Last Name" v-model="form.last_name">
                  </div><!--//form-group-->
                  <div class="form-group col-12 col-md-6">
                    <label for="email" class="sr-only">Email Address</label>
                    <input type="email" class="form-control" id="emailaddress" name="emailaddress"
                    placeholder="Email Address" v-model="form.email">
                  </div><!--//form-group-->
                  <div class="form-group col-12 col-md-6">
                    <label for="phone_number" class="sr-only">Phone Number</label>
                    <input type="tex" class="form-control" id="phone_number" name="phone_number" placeholder="Phone Number" v-model="form.phone">
                  </div><!--//form-group-->
                  <div class="form-group col-12 col-md-12">
                    <label for="note" class="sr-only">Your Message</label>
                    <textarea class="form-control" id="note" name="note" rows="3" placeholder="Your message" v-model="form.message"></textarea>
                  </div><!--//form-group-->

                </div><!--//row-->

                <button type="submit" class="btn btn-primary btn-cta">FREE CONSULTATION</button>
              </form><!--//form-->
            </div><!--//form-box-->
          </div><!--//form-wrapper-->

        </div><!--//container-->
      </div><!--//section-inner-->
    </section><!--//signup-section-->

  </div>
</template>

<script>
import axios from 'axios';
import VeeValidate from 'vee-validate';

let token = document.getElementsByName('csrf-token')[0].getAttribute('content')
axios.defaults.headers.common['X-CSRF-Token'] = token
axios.defaults.headers.common['Accept'] = 'application/json'

export default {
  data: function() {
    return {
      form : {
        first_name: '',
        last_name:  '',
        email:      '',
        phone:      '',
        message:    ''
      },
      errors: [],
      formSubmitted: false
    }
  },
  methods: {
    validateBeforeSubmit(e) {
      debugger
      this.$validator.validateAll();
      if (!this.errors.any()) {
        this.submitForm()
      }
    },
    submitForm: function(form) {
      axios.post('/leads/sign-up',{
        first_name: form.first_name,
        last_name:  form.last_name,
        email:      form.email,
        phone:      form.phone,
        message:    form.message
      })
        .then(response => {
          this.formSubmitted = true
        })
        .catch(e => {
          this.errors = e.response.data.errors
        })
    }
  }
}
  </script>

