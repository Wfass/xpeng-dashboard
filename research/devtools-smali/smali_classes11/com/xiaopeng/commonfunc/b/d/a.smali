.class public Lcom/xiaopeng/commonfunc/b/d/a;
.super Ljava/lang/Object;
.source "IndivModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/b/d/a$a;
    }
.end annotation


# static fields
.field private static final nW:Ljava/lang/String;

.field private static final nX:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private nY:Lcom/xiaopeng/commonfunc/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INDIV_TEST_ENCRYPTION"

    .line 47
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/d/a;->nW:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INDIV_TEST_DECRYPTION"

    .line 49
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/d/a;->nX:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/c;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/xiaopeng/commonfunc/b/d/a$1;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/commonfunc/b/d/a$1;-><init>(Lcom/xiaopeng/commonfunc/b/d/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/xiaopeng/commonfunc/b/d/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/b/d/a$2;-><init>(Lcom/xiaopeng/commonfunc/b/d/a;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/d/a;->nY:Lcom/xiaopeng/commonfunc/a/c;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/d/a;)Lcom/xiaopeng/commonfunc/a/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->nY:Lcom/xiaopeng/commonfunc/a/c;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/commonfunc/b/d/a;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/commonfunc/b/d/a;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dS()Z
    .locals 6

    .line 126
    nop

    .line 128
    new-instance v0, Lcom/xiaopeng/commonfunc/b/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/commonfunc/b/d/a$a;-><init>(Lcom/xiaopeng/commonfunc/b/d/a;Lcom/xiaopeng/commonfunc/b/d/a$1;)V

    .line 129
    const-string v1, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    iput-object v1, v0, Lcom/xiaopeng/commonfunc/b/d/a$a;->oa:Ljava/lang/String;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/commonfunc/b/d/a$a;->ob:Ljava/util/ArrayList;

    .line 133
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    if-ge v2, v3, :cond_0

    .line 134
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/b/d/a$a;->ob:Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->oG()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v4

    const-string v5, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-virtual {v4, v5, v2}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v2, "IndivModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypt check string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :try_start_0
    const-class v2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 142
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/b/d/a;->nW:Ljava/lang/String;

    .line 143
    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 149
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_1
    nop

    .line 149
    :goto_1
    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :goto_2
    return v1
.end method

.method private dT()Z
    .locals 7

    .line 155
    nop

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    const-string v2, "rawData"

    const-string v3, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v3}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 161
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/commonfunc/b/d/a;->nX:Ljava/lang/String;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 162
    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 167
    return v2

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    return v2

    .line 175
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/xiaopeng/commonfunc/b/d/a$a;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/commonfunc/b/d/a$a;

    .line 176
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/xiaopeng/commonfunc/b/d/a$a;->ob:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 180
    :cond_2
    nop

    .line 181
    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/xiaopeng/commonfunc/b/d/a$a;->ob:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 182
    const-string v4, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->oG()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v5

    iget-object v6, v0, Lcom/xiaopeng/commonfunc/b/d/a$a;->ob:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 183
    nop

    .line 184
    const-string v0, "IndivModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decryption check failed with key: #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_1

    .line 181
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_4
    move v2, v1

    :goto_1
    goto :goto_3

    .line 177
    :cond_5
    :goto_2
    return v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    nop

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :goto_3
    return v2
.end method

.method private synthetic dU()V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/b/d/a;->dS()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/b/d/a;->dT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    move v0, v2

    goto :goto_0

    .line 117
    :cond_0
    nop

    .line 118
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/b/d/a;->nY:Lcom/xiaopeng/commonfunc/a/c;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/b/d/a;->nY:Lcom/xiaopeng/commonfunc/a/c;

    .line 120
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 119
    :goto_1
    invoke-interface {v3, v1, v2}, Lcom/xiaopeng/commonfunc/a/c;->onReceiveResult(II)V

    .line 122
    :cond_2
    return-void
.end method

.method public static synthetic lambda$0r294TQj2k5ZdwTlah3zqALrHug(Lcom/xiaopeng/commonfunc/b/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/b/d/a;->dU()V

    return-void
.end method


# virtual methods
.method public dN()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public dO()Z
    .locals 1

    .line 103
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->es()Z

    move-result v0

    return v0
.end method

.method public dP()V
    .locals 0

    .line 107
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->dP()V

    .line 108
    return-void
.end method

.method public dQ()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->dQ()V

    .line 113
    return-void
.end method

.method public dR()V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaopeng/commonfunc/b/d/-$$Lambda$a$0r294TQj2k5ZdwTlah3zqALrHug;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/b/d/-$$Lambda$a$0r294TQj2k5ZdwTlah3zqALrHug;-><init>(Lcom/xiaopeng/commonfunc/b/d/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public init()V
    .locals 3

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/d/a;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method
