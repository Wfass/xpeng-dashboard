.class Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$DeviceShareManagerHolder;
.super Ljava/lang/Object;
.source "DeviceShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceShareManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 178
    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;-><init>(Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$DeviceShareManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;
    .locals 1

    .line 177
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$DeviceShareManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    return-object v0
.end method
