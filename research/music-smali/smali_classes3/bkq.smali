.class public Lbkq;
.super Ljava/lang/Object;
.source "SessionInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "https://xmart.xiaopeng.com/media/v3/music/login/logout"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "https://xmart.xiaopeng.com/media/v4/music/login/logout"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/login/logout"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9

    .line 42
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    const-string v2, ""

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_9

    sget-object v3, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 56
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 63
    :cond_2
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 64
    const-class v4, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "SessionInterceptor"

    if-eqz v4, :cond_3

    .line 65
    :try_start_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v6

    const v7, 0x989a6a

    if-ne v6, v7, :cond_3

    .line 66
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "10001002 sid refresh! ,url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;

    invoke-static {v3, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;

    .line 71
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v2

    invoke-virtual {v2}, Lbdm;->d()Lbel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbel;->d(Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "XP-Media-Netease-Sid"

    .line 74
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v3

    invoke-virtual {v3}, Lbdm;->d()Lbel;

    move-result-object v3

    invoke-virtual {v3}, Lbel;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 76
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_3
    const-string v6, ",url="

    if-eqz v4, :cond_4

    .line 77
    :try_start_2
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v7

    const v8, 0x989a69

    if-ne v7, v8, :cond_4

    .line 79
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result p1

    .line 80
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "10001001 music unbinded! isMainProcess="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 82
    invoke-direct {p0, v0}, Lbkq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 83
    new-instance p1, Lbkq$1;

    invoke-direct {p1, p0}, Lbkq$1;-><init>(Lbkq;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 90
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v7

    const v8, 0xb71ee9

    if-ne v7, v8, :cond_5

    .line 92
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result p1

    .line 93
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR_NO_LOGIN_KUGOU music unbinded! isMainProcess="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 95
    invoke-direct {p0, v0}, Lbkq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 96
    new-instance p1, Lbkq$2;

    invoke-direct {p1, p0}, Lbkq$2;-><init>(Lbkq;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 103
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v7

    const v8, 0x8967cb

    if-ne v7, v8, :cond_6

    .line 104
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9005003 sid refresh! ,url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;

    invoke-static {v3, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;

    .line 108
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbdx;->a(Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "XP-Media-Xima-Sid"

    .line 111
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v3

    invoke-virtual {v3}, Lbdx;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 113
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v4, :cond_7

    .line 114
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result p1

    const v7, 0x7a1201

    if-ne p1, v7, :cond_7

    .line 116
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result p1

    .line 117
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "8000001 music unbinded! isMainProcess="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 119
    invoke-direct {p0, v0}, Lbkq;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 120
    new-instance p1, Lbkq$3;

    invoke-direct {p1, p0}, Lbkq$3;-><init>(Lbkq;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 127
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result p1

    const v4, 0x895441

    if-ne p1, v4, :cond_8

    .line 129
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result p1

    .line 130
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "9000001 reading unbinded! isMainProcess="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 132
    invoke-direct {p0, v0}, Lbkq;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 133
    new-instance p1, Lbkq$4;

    invoke-direct {p1, p0}, Lbkq$4;-><init>(Lbkq;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 141
    :cond_8
    :goto_0
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v3}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object p1

    .line 142
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_1
    return-object v1
.end method
