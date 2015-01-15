.class public Laam/speechtt/app/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field protected static final RESULT_SPEECH:I = 0x1


# instance fields
.field private btnSpeak:Landroid/widget/ImageButton;

.field public edit:Landroid/widget/EditText;

.field private txtText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Laam/speechtt/app/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Laam/speechtt/app/MainActivity;->txtText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 81
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, text:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Laam/speechtt/app/MainActivity$2;

    invoke-direct {v2, p0, v0}, Laam/speechtt/app/MainActivity$2;-><init>(Laam/speechtt/app/MainActivity;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Laam/speechtt/app/MainActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Laam/speechtt/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laam/speechtt/app/MainActivity;->txtText:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Laam/speechtt/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laam/speechtt/app/MainActivity;->edit:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Laam/speechtt/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Laam/speechtt/app/MainActivity;->btnSpeak:Landroid/widget/ImageButton;

    .line 43
    iget-object v0, p0, Laam/speechtt/app/MainActivity;->btnSpeak:Landroid/widget/ImageButton;

    new-instance v1, Laam/speechtt/app/MainActivity$1;

    invoke-direct {v1, p0}, Laam/speechtt/app/MainActivity$1;-><init>(Laam/speechtt/app/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 69
    invoke-virtual {p0}, Laam/speechtt/app/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
