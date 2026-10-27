.class Lcom/xiaopeng/lib/feature/b$a;
.super Ljava/lang/Object;
.source "CommonCarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/feature/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaopeng/lib/feature/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/lib/feature/b;

    invoke-direct {v0}, Lcom/xiaopeng/lib/feature/b;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/feature/b$a;->a:Lcom/xiaopeng/lib/feature/b;

    return-void
.end method

.method static synthetic a()Lcom/xiaopeng/lib/feature/b;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/lib/feature/b$a;->a:Lcom/xiaopeng/lib/feature/b;

    return-object v0
.end method
