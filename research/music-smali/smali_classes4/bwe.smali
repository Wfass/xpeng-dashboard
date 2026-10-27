.class public Lbwe;
.super Ljava/lang/Object;
.source "AsrToTextNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwe$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lbve;

.field private c:Lbwd;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:Lbvd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AsrToTextNode"

    .line 22
    iput-object v0, p0, Lbwe;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lbwe;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lbwe;->e:Z

    .line 206
    new-instance v0, Lbwe$1;

    invoke-direct {v0, p0}, Lbwe$1;-><init>(Lbwe;)V

    iput-object v0, p0, Lbwe;->f:Lbvd;

    return-void
.end method

.method public static c()Lbwe;
    .locals 1

    .line 57
    sget-object v0, Lbwe$a;->a:Lbwe;

    return-object v0
.end method

.method private d()Lbve;
    .locals 5

    .line 68
    iget-object v0, p0, Lbwe;->b:Lbve;

    if-nez v0, :cond_5

    .line 69
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    invoke-virtual {v0}, Lbus;->h()Lbve;

    move-result-object v0

    iput-object v0, p0, Lbwe;->b:Lbve;

    .line 70
    iget-object v0, p0, Lbwe;->b:Lbve;

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lbwe;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbwe;->d:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lbwe;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 85
    iget-object v4, p0, Lbwe;->b:Lbve;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lbve;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 87
    iget-object v4, p0, Lbwe;->b:Lbve;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lbve;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 88
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lbwe;->b:Lbve;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lbve;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    iget-object v0, p0, Lbwe;->b:Lbve;

    const/4 v1, 0x0

    const-string v2, "otp_audio_save_path"

    invoke-virtual {v0, v2, v1}, Lbve;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lbwe;->b:Lbve;

    const/4 v1, 0x1

    const-string v2, "otp_keep_audio_record"

    invoke-virtual {v0, v2, v1}, Lbve;->a(Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lbwe;->b:Lbve;

    const-string v2, "otp_enable_punct"

    invoke-virtual {v0, v2, v1}, Lbve;->a(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lbwe;->b:Lbve;

    const/4 v2, 0x0

    const-string v3, "otp_asr_buffer"

    invoke-virtual {v0, v3, v2}, Lbve;->a(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lbwe;->b:Lbve;

    const-string v2, "otp_audio_format"

    invoke-virtual {v0, v2, v1}, Lbve;->a(Ljava/lang/String;I)V

    .line 98
    :cond_5
    :goto_2
    iget-object v0, p0, Lbwe;->b:Lbve;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 29
    iget-object v0, p0, Lbwe;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbwe;->c:Lbwd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lbwe;->c:Lbwd;

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lbwe;->d()Lbve;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 36
    iget-object v0, p0, Lbwe;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lbwe;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbwe;->c:Lbwd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lbwe;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lbwe;->b:Lbve;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lbwe;->e:Z

    .line 40
    iget-object v0, p0, Lbwe;->c:Lbwd;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "messageCode"

    const-string v2, "501"

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    :goto_0
    iget-object v1, p0, Lbwe;->c:Lbwd;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lbwd;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
