.class public Lcom/xiaopeng/track/BIHelper;
.super Ljava/lang/Object;
.source "BIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/track/BIHelper$EVENT;
    }
.end annotation


# static fields
.field private static BID:Ljava/lang/String; = ""

.field private static MODULE:Ljava/lang/String; = ""

.field private static PID:Ljava/lang/String; = ""

.field private static SOURCE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "BIHelperLib"

.field private static sCtx:Landroid/content/Context; = null

.field private static sIsInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "current",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 125
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 126
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->collect:Lcom/xiaopeng/track/BIHelper$EVENT;

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static expose(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 49
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string v0, "BIHelper is not init, please call init first!!!"

    .line 50
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->expose:Lcom/xiaopeng/track/BIHelper$EVENT;

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static expose(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "source",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 69
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->expose:Lcom/xiaopeng/track/BIHelper$EVENT;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static expose(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 59
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->expose:Lcom/xiaopeng/track/BIHelper$EVENT;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0, v1, v2, p1}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static getDataLog()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    .locals 2

    .line 159
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BIHelperLib"

    const-string v1, "moduleEntry is null, please check if DataLogModuleEntry is registered"

    .line 161
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    return-object v0
.end method

.method public static init(Lcom/xiaopeng/track/BIConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/track/BIConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/track/BIConfig;->getModuleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/track/BIHelper;->MODULE:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/track/BIConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/track/BIHelper;->PID:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/track/BIConfig;->getBID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/track/BIHelper;->BID:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/track/BIConfig;->getSource()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    .line 44
    const-class p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    const/4 p0, 0x1

    .line 45
    sput-boolean p0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    return-void
.end method

.method public static interact(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 76
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string v0, "BIHelper is not init, please call init first!!!"

    .line 77
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->interact:Lcom/xiaopeng/track/BIHelper$EVENT;

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static interact(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "target"
        }
    .end annotation

    .line 94
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 95
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->interact:Lcom/xiaopeng/track/BIHelper$EVENT;

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "target",
            "source",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 115
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 116
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->interact:Lcom/xiaopeng/track/BIHelper$EVENT;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "target",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 105
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->interact:Lcom/xiaopeng/track/BIHelper$EVENT;

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0, p1, v1, p2}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static interact(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 86
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/xiaopeng/track/BIHelper$EVENT;->interact:Lcom/xiaopeng/track/BIHelper$EVENT;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xiaopeng/track/BIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0, v1, v2, p1}, Lcom/xiaopeng/track/BIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/BIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "event",
            "value",
            "source",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/track/BIHelper$EVENT;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 139
    sget-boolean v0, Lcom/xiaopeng/track/BIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p0, "BIHelperLib"

    const-string p1, "BIHelper is not init, please call init first!!!"

    .line 140
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 144
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v0, "id"

    .line 146
    invoke-interface {p4, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIHelper$EVENT;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "event"

    invoke-interface {p4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p0, "value"

    .line 149
    invoke-interface {p4, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    const-string p3, ""

    :goto_0
    const-string p0, "source"

    .line 151
    invoke-interface {p4, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object p0, Lcom/xiaopeng/track/BIHelper;->sCtx:Landroid/content/Context;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "screen"

    invoke-interface {p4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {p4}, Lcom/xiaopeng/track/BIHelper;->sendStatistic(Ljava/util/Map;)V

    return-void
.end method

.method private static sendStatistic(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/xiaopeng/track/BIHelper;->MODULE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BIHelperLib"

    if-nez v0, :cond_7

    sget-object v0, Lcom/xiaopeng/track/BIHelper;->PID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/xiaopeng/track/BIHelper;->BID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 173
    :cond_0
    invoke-static {}, Lcom/xiaopeng/track/BIHelper;->getDataLog()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "dataLog is null, please check if DataLogModuleEntry is registered"

    .line 175
    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/track/BIHelper;->MODULE:Ljava/lang/String;

    .line 179
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/track/BIHelper;->PID:Ljava/lang/String;

    .line 180
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/track/BIHelper;->BID:Ljava/lang/String;

    .line 181
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    if-eqz p0, :cond_6

    .line 183
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 185
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 186
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 188
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Character;

    if-eqz v4, :cond_4

    .line 189
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 190
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 191
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    :cond_5
    const-string v3, " params type invalid"

    .line 193
    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_6
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object p0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    return-void

    :cond_7
    :goto_1
    const-string p0, "param invalid, please init first!!!"

    .line 169
    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
