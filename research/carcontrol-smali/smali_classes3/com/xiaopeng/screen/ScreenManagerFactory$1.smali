.class Lcom/xiaopeng/screen/ScreenManagerFactory$1;
.super Landroid/util/Singleton;
.source "ScreenManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/ScreenManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/screen/ScreenManagerFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/screen/ScreenManagerFactory;
    .locals 1

    .line 12
    new-instance v0, Lcom/xiaopeng/screen/ScreenManagerFactoryImpl;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenManagerFactoryImpl;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/xiaopeng/screen/ScreenManagerFactory$1;->create()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    return-object v0
.end method
