.class final Lcom/xiaopeng/lib/security/b/a$a;
.super Ljava/lang/Object;
.source "NoneSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final VA:Lcom/xiaopeng/lib/security/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 279
    new-instance v0, Lcom/xiaopeng/lib/security/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/security/b/a;-><init>(Lcom/xiaopeng/lib/security/b/a$1;)V

    sput-object v0, Lcom/xiaopeng/lib/security/b/a$a;->VA:Lcom/xiaopeng/lib/security/b/a;

    return-void
.end method

.method static synthetic os()Lcom/xiaopeng/lib/security/b/a;
    .locals 1

    .line 278
    sget-object v0, Lcom/xiaopeng/lib/security/b/a$a;->VA:Lcom/xiaopeng/lib/security/b/a;

    return-object v0
.end method
