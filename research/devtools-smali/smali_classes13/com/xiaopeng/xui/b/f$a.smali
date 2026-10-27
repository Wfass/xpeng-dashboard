.class Lcom/xiaopeng/xui/b/f$a;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final abp:Lcom/xiaopeng/xui/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xui/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/b/f;-><init>(Lcom/xiaopeng/xui/b/f$1;)V

    sput-object v0, Lcom/xiaopeng/xui/b/f$a;->abp:Lcom/xiaopeng/xui/b/f;

    return-void
.end method

.method static synthetic qM()Lcom/xiaopeng/xui/b/f;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xui/b/f$a;->abp:Lcom/xiaopeng/xui/b/f;

    return-object v0
.end method
