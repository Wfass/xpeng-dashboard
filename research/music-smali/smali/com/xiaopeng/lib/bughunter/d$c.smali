.class Lcom/xiaopeng/lib/bughunter/d$c;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/xiaopeng/lib/bughunter/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/xiaopeng/lib/bughunter/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/bughunter/d;-><init>(Lcom/xiaopeng/lib/bughunter/d$1;)V

    sput-object v0, Lcom/xiaopeng/lib/bughunter/d$c;->a:Lcom/xiaopeng/lib/bughunter/d;

    return-void
.end method

.method static synthetic a()Lcom/xiaopeng/lib/bughunter/d;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/bughunter/d$c;->a:Lcom/xiaopeng/lib/bughunter/d;

    return-object v0
.end method
