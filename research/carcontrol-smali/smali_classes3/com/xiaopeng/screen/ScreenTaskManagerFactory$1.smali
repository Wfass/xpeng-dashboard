.class Lcom/xiaopeng/screen/ScreenTaskManagerFactory$1;
.super Landroid/util/Singleton;
.source "ScreenTaskManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/screen/ScreenTaskManagerFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/screen/ScreenTaskManagerFactoryImpl;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactoryImpl;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$1;->create()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    return-object v0
.end method
