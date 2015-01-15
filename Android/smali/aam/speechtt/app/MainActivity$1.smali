.class Laam/speechtt/app/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laam/speechtt/app/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laam/speechtt/app/MainActivity;


# direct methods
.method constructor <init>(Laam/speechtt/app/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Laam/speechtt/app/MainActivity$1;->this$0:Laam/speechtt/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "en-US"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :try_start_0
    iget-object v3, p0, Laam/speechtt/app/MainActivity$1;->this$0:Laam/speechtt/app/MainActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Laam/speechtt/app/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    iget-object v3, p0, Laam/speechtt/app/MainActivity$1;->this$0:Laam/speechtt/app/MainActivity;

    #getter for: Laam/speechtt/app/MainActivity;->txtText:Landroid/widget/TextView;
    invoke-static {v3}, Laam/speechtt/app/MainActivity;->access$000(Laam/speechtt/app/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, a:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Laam/speechtt/app/MainActivity$1;->this$0:Laam/speechtt/app/MainActivity;

    invoke-virtual {v3}, Laam/speechtt/app/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Opps! Your device doesn\'t support Speech to Text"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 60
    .local v2, t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
