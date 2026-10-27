.class public Lcom/xiaopeng/devtools/model/d/a;
.super Ljava/lang/Object;
.source "OledModel.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/d/a$d;,
        Lcom/xiaopeng/devtools/model/d/a$b;,
        Lcom/xiaopeng/devtools/model/d/a$c;,
        Lcom/xiaopeng/devtools/model/d/a$a;,
        Lcom/xiaopeng/devtools/model/d/a$e;
    }
.end annotation


# instance fields
.field private tG:Lcom/xiaopeng/devtools/model/d/a$c;

.field private tH:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/d/a$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/d/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/d/a;)Lcom/xiaopeng/devtools/model/d/a$c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/d/a;->tG:Lcom/xiaopeng/devtools/model/d/a$c;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/d/a;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/d/a;->bF(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private bF(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/OledData;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    new-instance v1, Lcom/xiaopeng/devtools/model/d/a$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/model/d/a$3;-><init>(Lcom/xiaopeng/devtools/model/d/a;)V

    .line 125
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/d/a$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 124
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/bean/oled/OledData;

    .line 127
    const-string v2, "OledModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCduOledDynamicMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/oled/OledData;->getCduOledDynamicMode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    return-object p1
.end method

.method public static gY()Lcom/xiaopeng/devtools/model/d/a;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a$d;->ha()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/oled/OledData;)V
    .locals 0

    .line 84
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/model/d/a$b;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/xiaopeng/devtools/model/d/a$a;

    new-instance v1, Lcom/xiaopeng/devtools/model/d/a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/model/d/a$1;-><init>(Lcom/xiaopeng/devtools/model/d/a;)V

    .line 56
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/d/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaopeng/devtools/model/d/a$a;-><init>(Lcom/xiaopeng/devtools/model/d/a;Lcom/xiaopeng/devtools/model/d/a$b;Ljava/lang/reflect/Type;)V

    const-string p1, "oled/sound_of_music/sound_of_music.json"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/d/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/model/d/a$c;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tG:Lcom/xiaopeng/devtools/model/d/a$c;

    .line 49
    new-instance p1, Lcom/xiaopeng/devtools/model/d/a$e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/devtools/model/d/a$e;-><init>(Lcom/xiaopeng/devtools/model/d/a;Lcom/xiaopeng/devtools/model/d/a$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/model/d/a$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)V
    .locals 0

    .line 98
    return-void
.end method

.method public b(Lcom/xiaopeng/devtools/model/d/a$b;)V
    .locals 2

    .line 61
    new-instance v0, Lcom/xiaopeng/devtools/model/d/a$a;

    new-instance v1, Lcom/xiaopeng/devtools/model/d/a$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/model/d/a$2;-><init>(Lcom/xiaopeng/devtools/model/d/a;)V

    .line 63
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/d/a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaopeng/devtools/model/d/a$a;-><init>(Lcom/xiaopeng/devtools/model/d/a;Lcom/xiaopeng/devtools/model/d/a$b;Ljava/lang/reflect/Type;)V

    const-string p1, "oled/oled_custom_default.json"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/d/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method

.method public bE(Ljava/lang/String;)V
    .locals 6

    .line 102
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    .line 104
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    :goto_0
    return-void
.end method

.method public gZ()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 120
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 141
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 69
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 148
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/d/a;->tH:Landroid/media/MediaPlayer;

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 150
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 135
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
