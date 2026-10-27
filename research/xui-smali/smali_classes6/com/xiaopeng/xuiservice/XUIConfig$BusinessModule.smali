.class public Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;
.super Ljava/lang/Object;
.source "XUIConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/XUIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessModule"
.end annotation


# static fields
.field public static final MODULE_IOT:Ljava/lang/String; = "iot"

.field public static final MODULE_MAIN:Ljava/lang/String; = "main"

.field public static final MODULE_OPENCAR:Ljava/lang/String; = "opencar"

.field public static final MODULE_REMOTE_SERVICE:Ljava/lang/String; = "remoteservice"

.field public static final MODULE_UVCCAMERA:Ljava/lang/String; = "uvccamera"

.field private static mModule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    const-string v0, "main"

    sput-object v0, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->mModule:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBusinessModule()Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public static isMainProcess()Z
    .locals 2

    .line 154
    const-string v0, "main"

    sget-object v1, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->mModule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setBusinessModule(Ljava/lang/String;)V
    .locals 0
    .param p0, "module"    # Ljava/lang/String;

    .line 150
    sput-object p0, Lcom/xiaopeng/xuiservice/XUIConfig$BusinessModule;->mModule:Ljava/lang/String;

    .line 151
    return-void
.end method
