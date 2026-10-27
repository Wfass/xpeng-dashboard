.class public final synthetic Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;->INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->lambda$getShareApps$2(I)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    move-result-object p1

    return-object p1
.end method
