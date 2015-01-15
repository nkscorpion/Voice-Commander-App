// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package aam.speechtt.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class MainActivity extends Activity
{

    protected static final int RESULT_SPEECH = 1;
    private ImageButton btnSpeak;
    public EditText edit;
    private TextView txtText;

    public MainActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        i;
        JVM INSTR tableswitch 1 1: default 28
    //                   1 29;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (j == -1 && intent != null)
        {
            (new Thread(new Runnable() {

                final MainActivity this$0;
                final ArrayList val$text;

                public void run()
                {
                    DefaultHttpClient defaulthttpclient;
                    HttpGet httpget;
                    defaulthttpclient = new DefaultHttpClient();
                    String s = edit.getText().toString();
                    String s1 = (new StringBuilder()).append(((String)text.get(0)).toString().replace(" ", "%20")).append('/').toString();
                    httpget = new HttpGet((new StringBuilder()).append("http://").append(s).append(":8000/voice/").append(s1).append("3fe5136c").toString());
                    defaulthttpclient.execute(httpget);
                    txtText.setText((CharSequence)text.get(0));
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

            
            {
                this$0 = MainActivity.this;
                text = arraylist;
                super();
            }
            })).start();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        txtText = (TextView)findViewById(0x7f080002);
        edit = (EditText)findViewById(0x7f080003);
        btnSpeak = (ImageButton)findViewById(0x7f080001);
        btnSpeak.setOnClickListener(new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "en-US");
                try
                {
                    startActivityForResult(intent, 1);
                    txtText.setText("");
                    return;
                }
                catch (ActivityNotFoundException activitynotfoundexception)
                {
                    Toast.makeText(getApplicationContext(), "Opps! Your device doesn't support Speech to Text", 0).show();
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f070000, menu);
        return true;
    }

}
