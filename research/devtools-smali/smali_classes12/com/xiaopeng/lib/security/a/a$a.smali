.class final Lcom/xiaopeng/lib/security/a/a$a;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final Vt:Lcom/xiaopeng/lib/security/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 564
    new-instance v0, Lcom/xiaopeng/lib/security/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/security/a/a;-><init>(Lcom/xiaopeng/lib/security/a/a$1;)V

    sput-object v0, Lcom/xiaopeng/lib/security/a/a$a;->Vt:Lcom/xiaopeng/lib/security/a/a;

    return-void
.end method

.method static synthetic oq()Lcom/xiaopeng/lib/security/a/a;
    .locals 1

    .line 563
    sget-object v0, Lcom/xiaopeng/lib/security/a/a$a;->Vt:Lcom/xiaopeng/lib/security/a/a;

    return-object v0
.end method
