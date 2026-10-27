.class final Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$Holder;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 564
    new-instance v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;)V

    sput-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$Holder;->INSTANCE:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1

    .line 563
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$Holder;->INSTANCE:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    return-object v0
.end method
