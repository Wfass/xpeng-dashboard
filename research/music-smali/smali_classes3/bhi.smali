.class public Lbhi;
.super Ljava/lang/Object;
.source "NeteaseDown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhi$a;
    }
.end annotation


# static fields
.field public static final b:I


# instance fields
.field private a:Z

.field protected c:Lcom/xiaopeng/musicradio/bean/music/DownState;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:F

.field private h:Lbhi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    sput v0, Lbhi;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lbhi;->a:Z

    .line 47
    iput-boolean v0, p0, Lbhi;->d:Z

    .line 48
    iput-boolean v0, p0, Lbhi;->e:Z

    .line 49
    iput-boolean v0, p0, Lbhi;->f:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 55
    iput v0, p0, Lbhi;->g:F

    .line 88
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/DownState;-><init>()V

    iput-object v0, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    .line 89
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/d;->a()Lcom/xiaopeng/appstore/storeprovider/d;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lbhi;->j()V

    return-void
.end method

.method static synthetic a(Lbhi;)F
    .locals 0

    .line 41
    iget p0, p0, Lbhi;->g:F

    return p0
.end method

.method static synthetic a(Lbhi;F)F
    .locals 0

    .line 41
    iput p1, p0, Lbhi;->g:F

    return p1
.end method

.method static synthetic a(Lbhi;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lbhi;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 401
    new-instance v0, Lbhi$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lbhi$3;-><init>(Lbhi;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lbhi;->a(Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/DownState;)V
    .locals 1

    .line 215
    new-instance v0, Lbhi$2;

    invoke-direct {v0, p0, p1}, Lbhi$2;-><init>(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbhi;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lbhi;->d:Z

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 2

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 413
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    .line 414
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lbhi;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lbhi;->r()V

    return-void
.end method

.method static synthetic b(Lbhi;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lbhi;->e:Z

    return p1
.end method

.method static synthetic c(Lbhi;)F
    .locals 2

    .line 41
    iget v0, p0, Lbhi;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    iput v1, p0, Lbhi;->g:F

    return v0
.end method

.method static synthetic c(Lbhi;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lbhi;->f:Z

    return p1
.end method

.method static synthetic d(Lbhi;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lbhi;->a:Z

    return p1
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lbhi;->d:Z

    .line 95
    iput-boolean v0, p0, Lbhi;->e:Z

    .line 96
    iput-boolean v0, p0, Lbhi;->f:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    iput v0, p0, Lbhi;->g:F

    return-void
.end method

.method private s()V
    .locals 1

    .line 420
    new-instance v0, Lbhi$4;

    invoke-direct {v0, p0}, Lbhi$4;-><init>(Lbhi;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.cloudmusic.iot.xiaopeng"

    return-object v0
.end method

.method protected b()I
    .locals 1

    .line 84
    sget v0, Lbhi;->b:I

    return v0
.end method

.method protected c()I
    .locals 1

    .line 273
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "neteasedown"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseDown"

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 101
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lbhi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbhi$a;-><init>(Lbhi;Lbhi$1;)V

    iput-object v0, p0, Lbhi;->h:Lbhi$a;

    .line 103
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    invoke-static {v0}, Lbhi$a;->a(Lbhi$a;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 108
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {v0}, Lbhi$a;->b(Lbhi$a;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lbhi;->h:Lbhi$a;

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lbhi;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lbhi;->a:Z

    return v0
.end method

.method public i()Z
    .locals 2

    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 8

    .line 131
    invoke-virtual {p0}, Lbhi;->i()Z

    move-result v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInstallState: hasSDCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NeteaseDown"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lbhi$1;

    invoke-direct {v0, p0}, Lbhi$1;-><init>(Lbhi;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lbql;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lbhi;->s()V

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lbhi;->a()Ljava/lang/String;

    move-result-object v5

    .line 145
    sget-object v6, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 146
    invoke-virtual {v6, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 147
    iput-boolean v3, p0, Lbhi;->a:Z

    .line 148
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5, v3}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 149
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {p0}, Lbhi;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 150
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5, v0}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 151
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 152
    sget-object v5, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Lbhi;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v6, v7}, Lbhi;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    iput-boolean v4, p0, Lbhi;->a:Z

    .line 155
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setInstall(Z)V

    .line 156
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {p0}, Lbhi;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setPackageName(Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5, v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setDownState(I)V

    .line 158
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/music/DownState;->setProgress(F)V

    .line 161
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/mnt/sdcard/musicdown/down"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbhi;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/z;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 163
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/z;->a(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_7

    .line 165
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 166
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setInstallState: content = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-class v5, Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v6, v5}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/music/DownState;

    if-eqz v5, :cond_7

    .line 170
    iput-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    .line 171
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/music/DownState;->isInstall()Z

    move-result v5

    iput-boolean v5, p0, Lbhi;->a:Z

    .line 172
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/music/DownState;->getProgress()F

    move-result v5

    iput v5, p0, Lbhi;->g:F

    .line 173
    iget-object v5, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/music/DownState;->getDownState()I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    if-eq v5, v0, :cond_2

    if-eq v5, v1, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    iput-boolean v4, p0, Lbhi;->a:Z

    .line 200
    invoke-direct {p0}, Lbhi;->r()V

    goto :goto_1

    .line 195
    :cond_2
    iput-boolean v3, p0, Lbhi;->a:Z

    .line 196
    invoke-direct {p0}, Lbhi;->r()V

    goto :goto_1

    .line 186
    :cond_3
    iput-boolean v4, p0, Lbhi;->d:Z

    .line 187
    iput-boolean v4, p0, Lbhi;->e:Z

    .line 188
    iput-boolean v3, p0, Lbhi;->f:Z

    .line 189
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-nez v0, :cond_4

    .line 190
    new-instance v0, Lbhi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbhi$a;-><init>(Lbhi;Lbhi$1;)V

    iput-object v0, p0, Lbhi;->h:Lbhi$a;

    .line 192
    :cond_4
    invoke-virtual {p0}, Lbhi;->m()V

    goto :goto_1

    .line 181
    :cond_5
    iput-boolean v4, p0, Lbhi;->d:Z

    .line 182
    iput-boolean v3, p0, Lbhi;->e:Z

    .line 183
    iput-boolean v4, p0, Lbhi;->f:Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lbhi;->g:F

    .line 176
    iput-boolean v3, p0, Lbhi;->d:Z

    .line 177
    iput-boolean v4, p0, Lbhi;->e:Z

    .line 178
    iput-boolean v4, p0, Lbhi;->f:Z

    .line 206
    :cond_7
    :goto_1
    iget-object v0, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-direct {p0, v0}, Lbhi;->a(Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    goto :goto_2

    .line 208
    :cond_8
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/z;->b(Ljava/lang/String;)Ljava/io/File;

    .line 209
    iget-object v0, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-direct {p0, v0}, Lbhi;->a(Lcom/xiaopeng/musicradio/bean/music/DownState;)V

    .line 211
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInstallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbhi;->c:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/DownState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected k()Z
    .locals 4

    .line 226
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->n()Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdt$b;

    .line 228
    iget v2, v1, Lbdt$b;->b:I

    invoke-virtual {p0}, Lbhi;->c()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 229
    iget-boolean v1, v1, Lbdt$b;->c:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 2

    .line 238
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lbhi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbhi$a;-><init>(Lbhi;Lbhi$1;)V

    iput-object v0, p0, Lbhi;->h:Lbhi$a;

    .line 241
    :cond_0
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-eqz v0, :cond_1

    .line 242
    invoke-static {v0}, Lbhi$a;->c(Lbhi$a;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 2

    .line 247
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lbhi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbhi$a;-><init>(Lbhi;Lbhi$1;)V

    iput-object v0, p0, Lbhi;->h:Lbhi$a;

    .line 250
    :cond_0
    iget-object v0, p0, Lbhi;->h:Lbhi$a;

    if-eqz v0, :cond_1

    .line 251
    invoke-static {v0}, Lbhi$a;->d(Lbhi$a;)V

    :cond_1
    return-void
.end method

.method public n()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lbhi;->d:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lbhi;->e:Z

    return v0
.end method

.method public p()F
    .locals 1

    .line 265
    iget v0, p0, Lbhi;->g:F

    return v0
.end method

.method public q()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lbhi;->f:Z

    return v0
.end method
