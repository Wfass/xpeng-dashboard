.class Lcom/xiaopeng/devtools/model/i/b$b;
.super Ljava/lang/Object;
.source "UserSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final uT:Lcom/xiaopeng/devtools/model/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaopeng/devtools/model/i/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/model/i/b;-><init>(Lcom/xiaopeng/devtools/model/i/b$1;)V

    sput-object v0, Lcom/xiaopeng/devtools/model/i/b$b;->uT:Lcom/xiaopeng/devtools/model/i/b;

    return-void
.end method

.method static synthetic hN()Lcom/xiaopeng/devtools/model/i/b;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/devtools/model/i/b$b;->uT:Lcom/xiaopeng/devtools/model/i/b;

    return-object v0
.end method
