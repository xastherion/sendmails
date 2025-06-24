# sendmails

A small, unified script collection that allows Apple Mail.app to send serial emails.

Sure, I know: there are great email clients to easily send bulk emails. But what if all your users are happy and satisfied with the built-in macOS app "Mail"? Yes, then we have a problem. We can’t just say: “Now use another one.” I couldn’t find a way to do it with Mail, so I developed **sendmails**. Our secretaries and office staff love it. I hope it’s useful for you too — and that you’ll love it as well.

## How it works:

Originally, I planned sendmails as a 100% AppleScript solution, but due to the limitations of AS, I switched to a mix of AppleScript and Python, with a better GUI and full integration with Apple Mail.app.

1. You need 3 data files:

   * `emailcontent.txt`: a template for the email, with variables to be replaced using content from
   * `kontakte.csv`: the contact list.
   * `sendmail.cfg`: a simple config file with info like the sender's address, the CSV filename, and the name of the email template (default is `emailcontent.txt`).

2. Run `sendmails.py` from Terminal (or via shortcut). I recommend navigating to the sendmails folder using `cd`. It opens a GUI showing the current config from `sendmail.cfg` and lets you update it. Sure, you can also edit `sendmail.cfg` with a text editor, but the GUI is more user-friendly.

3. Once everything is correctly configured, the Python script calls the AppleScript routine in `sendmails.scpt`, which is the actual actor controlling Mail.app. Mail.app then performs everything the script instructs and works like a multi-mail sender — similar to Outlook’s mail merge function.

All headers from contacts.csv (as p.e. {Redef} or {TAN}) should be the same variables on emailcontent.txt. You can change the headersnames, or delete some unnecessary, but this has consecuences to the sended end-email. Then you should change the template emailcontent.txt too.
