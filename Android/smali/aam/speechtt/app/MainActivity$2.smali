.class Laam/speechtt/app/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laam/speechtt/app/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laam/speechtt/app/MainActivity;

.field final synthetic val$text:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Laam/speechtt/app/MainActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Laam/speechtt/app/MainActivity$2;->this$0:Laam/speechtt/app/MainActivity;

    iput-object p2, p0, Laam/speechtt/app/MainActivity$2;->val$text:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 88
    .local v0, client:Lorg/apache/http/client/HttpClient;
    iget-object v6, p0, Laam/speechtt/app/MainActivity$2;->this$0:Laam/speechtt/app/MainActivity;

    iget-object v6, v6, Laam/speechtt/app/MainActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, urlstr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Laam/speechtt/app/MainActivity$2;->val$text:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, encoded:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":8000/voice/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "3fe5136c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 94
    .local v4, response:Lorg/apache/http/HttpResponse;
    iget-object v6, p0, Laam/speechtt/app/MainActivity$2;->this$0:Laam/speechtt/app/MainActivity;

    #getter for: Laam/speechtt/app/MainActivity;->txtText:Landroid/widget/TextView;
    invoke-static {v6}, Laam/speechtt/app/MainActivity;->access$000(Laam/speechtt/app/MainActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Laam/speechtt/app/MainActivity$2;->val$text:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #encoded:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #urlstr:Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #encoded:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #urlstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 102
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v2           #encoded:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #urlstr:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #encoded:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #urlstr:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 100
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
