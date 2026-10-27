.class public abstract Lcom/xiaopeng/screen/ScreenManagerFactory;
.super Ljava/lang/Object;
.source "ScreenManagerFactory.java"


# static fields
.field private static final sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/screen/ScreenManagerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/xiaopeng/screen/ScreenManagerFactory$1;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenManagerFactory$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/screen/ScreenManagerFactory;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/screen/ScreenManagerFactory;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/screen/ScreenManagerFactory;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/screen/ScreenManagerFactory;

    return-object v0
.end method


# virtual methods
.method public abstract getDisplayId(I)I
.end method

.method public abstract getScreenConfiguration(I)Lcom/xiaopeng/screen/ScreenItemConfiguration;
.end method

.method public abstract getScreenDevice(I)Lcom/xiaopeng/screen/ScreenDevice;
.end method

.method public abstract getScreenDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/screen/ScreenDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenId(I)I
.end method

.method public abstract hasScreen(I)Z
.end method
