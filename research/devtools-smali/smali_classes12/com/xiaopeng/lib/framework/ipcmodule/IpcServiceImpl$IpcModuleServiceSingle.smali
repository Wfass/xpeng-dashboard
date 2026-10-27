.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcModuleServiceSingle;
.super Ljava/lang/Object;
.source "IpcServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IpcModuleServiceSingle"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 360
    new-instance v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcModuleServiceSingle;->INSTANCE:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
    .locals 1

    .line 359
    sget-object v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IpcModuleServiceSingle;->INSTANCE:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    return-object v0
.end method
