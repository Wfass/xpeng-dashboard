.class public Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "GpsDebugActivity.java"


# instance fields
.field private CS:I

.field private CT:I

.field private FI:Landroid/widget/CheckBox;

.field private FJ:Landroid/widget/TextView;

.field private FK:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CS:I

    .line 40
    iput v0, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CT:I

    return-void
.end method

.method private U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const-string v1, "GpsDebugActivity"

    const-string v2, "mkDir fail "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :cond_0
    const-string v1, "GpsDebugActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srcPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " destPath = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 133
    if-eqz p1, :cond_2

    .line 134
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 135
    const-string v1, "GpsDebugActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filesList[i].getName() =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget v1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CS:I

    .line 138
    new-instance v1, Lcom/xiaopeng/devtools/system/b/a;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/devtools/system/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 140
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    return-void
.end method

.method private synthetic g(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string p1, "sys.gps.dump"

    const-string p2, "true"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FK:Landroid/widget/TextView;

    const p2, 0x7f1000a9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 108
    :cond_0
    const-string p1, "sys.gps.dump"

    const-string p2, "false"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FK:Landroid/widget/TextView;

    const p2, 0x7f1000ea

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FI:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 111
    const-string p1, "/data/gps/"

    const-string p2, "/data/Log/log0/gps/"

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void
.end method

.method public static synthetic lambda$gZdObJuzHAGAjhnsVQ8Hj6S0GZ4(Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->g(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private mq()V
    .locals 4

    .line 117
    const-string v0, ""

    .line 119
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.gps.version"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FJ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 79
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->setContentView(I)V

    .line 80
    return-void
.end method

.method public fe()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 86
    const v0, 0x7f0901e7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FI:Landroid/widget/CheckBox;

    .line 87
    const v0, 0x7f090406

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FJ:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f090400

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FK:Landroid/widget/TextView;

    .line 89
    return-void
.end method

.method public ff()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FI:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/debug/-$$Lambda$GpsDebugActivity$gZdObJuzHAGAjhnsVQ8Hj6S0GZ4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/debug/-$$Lambda$GpsDebugActivity$gZdObJuzHAGAjhnsVQ8Hj6S0GZ4;-><init>(Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 94
    const-string v0, "true"

    const-string v1, "sys.gps.dump"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FI:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->mq()V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FK:Landroid/widget/TextView;

    const v1, 0x7f100146

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FI:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 63
    goto :goto_0

    .line 47
    :pswitch_1
    iget p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CT:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CT:I

    .line 48
    iget p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CT:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->CS:I

    if-ne p1, v1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FK:Landroid/widget/TextView;

    const v1, 0x7f1000e5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;->FI:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 51
    new-instance p1, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity$1;-><init>(Lcom/xiaopeng/devtools/view/debug/GpsDebugActivity;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
