// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package aam.speechtt.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

// Referenced classes of package aam.speechtt.app:
//            MainActivity

class this._cls0
    implements android.view.tener
{

    final MainActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "en-US");
        try
        {
            startActivityForResult(intent, 1);
            MainActivity.access$000(MainActivity.this).setText("");
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Toast.makeText(getApplicationContext(), "Opps! Your device doesn't support Speech to Text", 0).show();
        }
    }

    Exception()
    {
        this$0 = MainActivity.this;
        super();
    }
}
