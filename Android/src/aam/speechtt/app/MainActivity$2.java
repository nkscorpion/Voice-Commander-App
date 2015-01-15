// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package aam.speechtt.app;

import android.widget.EditText;
import android.widget.TextView;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package aam.speechtt.app:
//            MainActivity

class val.text
    implements Runnable
{

    final MainActivity this$0;
    final ArrayList val$text;

    public void run()
    {
        DefaultHttpClient defaulthttpclient;
        HttpGet httpget;
        defaulthttpclient = new DefaultHttpClient();
        String s = edit.getText().toString();
        String s1 = (new StringBuilder()).append(((String)val$text.get(0)).toString().replace(" ", "%20")).append('/').toString();
        httpget = new HttpGet((new StringBuilder()).append("http://").append(s).append(":8000/voice/").append(s1).append("3fe5136c").toString());
        defaulthttpclient.execute(httpget);
        MainActivity.access$000(MainActivity.this).setText((CharSequence)val$text.get(0));
        return;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        try
        {
            clientprotocolexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    tocolException()
    {
        this$0 = final_mainactivity;
        val$text = ArrayList.this;
        super();
    }
}
