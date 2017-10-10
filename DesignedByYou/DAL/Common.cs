using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Configuration;




namespace DesignedByYou.DAL
{
    public class Common
    {
        public static string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        public static string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            cipherText = cipherText.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        public static void PayWithPayPal(string amount, string itemInfo, string name,
         string phone, string email, string currency)
        {
            string redirecturl = "";

            //Mention URL to redirect content to paypal site
            redirecturl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" +
                           ConfigurationManager.AppSettings["paypalemail"].ToString();

            //First name i assign static based on login details assign this value
            redirecturl += "&first_name=" + name;

            //City i assign static based on login user detail you change this value
            redirecturl += "&city=bhubaneswar";

            //State i assign static based on login user detail you change this value
            redirecturl += "&state=Odisha";

            //Product Name
            redirecturl += "&item_name=" + itemInfo;

            //Product Name
            redirecturl += "&amount=" + amount;

            //Phone No
            redirecturl += "&night_phone_a=" + phone;

            //Product Name
            redirecturl += "&item_name=" + itemInfo;

            //Address 
            redirecturl += "&address1=" + email;

            //Business contact id
            // redirecturl += "&business=k.tapankumar@gmail.com";

            //Shipping charges if any
            redirecturl += "&shipping=0";

            //Handling charges if any
            redirecturl += "&handling=0";

            //Tax amount if any
            redirecturl += "&tax=0";

            //Add quatity i added one only statically 
            redirecturl += "&quantity=1";

            //Currency code 
            redirecturl += "&currency=" + currency;

            // returnURL += "&currency=USD";

            //Success return page url
            redirecturl += "&return=" +
              ConfigurationManager.AppSettings["SuccessURL"].ToString();

            //Failed return page url
            redirecturl += "&cancel_return=" +
              ConfigurationManager.AppSettings["FailedURL"].ToString();

            //  Response.Redirect(redirecturl);
        }
    }
}