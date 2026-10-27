.class public Lcom/xiaopeng/xuiservice/utils/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/SysUtils$Holder;
    }
.end annotation


# static fields
.field private static final PROP_SYSTEM_SERVER_LAST_COUNT:Ljava/lang/String;

.field private static final PROP_SYSTEM_SERVER_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final TAG:Ljava/lang/String; = "SysUtils"


# instance fields
.field private currentSysStartCount:I

.field private lastSysStartCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys.xiaopeng.xui.sys.last.count."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->PROP_SYSTEM_SERVER_LAST_COUNT:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->lastSysStartCount:I

    .line 14
    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->currentSysStartCount:I

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/SysUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/SysUtils$1;

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/SysUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/SysUtils;
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SysUtils$Holder;->access$100()Lcom/xiaopeng/xuiservice/utils/SysUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 28
    const-string v0, "SysUtils"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->PROP_SYSTEM_SERVER_LAST_COUNT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->lastSysStartCount:I

    .line 30
    const-string v0, "sys.system_server.start_count"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->currentSysStartCount:I

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->PROP_SYSTEM_SERVER_LAST_COUNT:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->currentSysStartCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "SysUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSysStartCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->lastSysStartCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentSysStartCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->currentSysStartCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSystemRestarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/SysUtils;->isSystemRestarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public isSystemRestarted()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->lastSysStartCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->currentSysStartCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->lastSysStartCount:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/utils/SysUtils;->currentSysStartCount:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
