<div class="breadcrumbs">
        <a href="index.php">Home</a><p>></p><a href="contact_us.php">Contact Us</a>
      </div>

    <div class="contact_us">
    <h2>Contact Us</h2>

    <div>
      <p>We're happy to answer with any Questions you have.<br>
      Just fill out the form below and we will respond as soon as possible.</p>
    </div>

      <form class="contact_us_form" action="#" method="post">

      <div class="contact_us_box">
        <div class="contact_us_left contact_us">
          <input type="text" placeholder="First Name*" class="contact_us_half_form">
          <input type="text" placeholder="Last Name*" class="contact_us_half_form">
          <input type="email" name="contact_email" placeholder="Email*" class="contact_us_full_form">
          <input type="text" placeholder="Address" class="contact_us_full_form">
          <input type="text" placeholder="City" class="contact_us_full_form">
          <select class="contact_us_half_form" name="contact_country">
            <option value="">Austria</option>
            <option value="">Germany</option>
            <option value="">Japan</option>
            <option value="">United Kingdom</option>
            <option value="">United States</option>
          </select>
          <input type="text" placeholder="Postal Code" class="contact_us_half_form contact_us_postal_fix">
          <input type="tel" placeholder="Phone" class="contact_us_full_form">
        </div>

        <div class="contact_us_right contact_us">
          <select class="contact_us_full_form" name="subject" >
              <option selected>Subject*</option>
              <option>Store Items</option>
              <option>Shipping & Policies</option>
              <option>Returns & Replacements</option>
              <option>Tours</option>
              <option>Jobs</option>
            </select>
            <input type="text" placeholder="Title*" class="contact_us_full_form">
            <textarea name="contact_us_text" placeholder="Write text here..." rows="8" cols="80" class="contact_us_text"></textarea>
        </div>

      </div>

        <div class="btn">
          <a href="index.php?page=contact_us_complete" name="contact_us_send"  value="Send">Send</a>
        </div>

      </form>
