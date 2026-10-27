.class final Lcom/xiaopeng/lib/security/none/NoneSecurity$Holder;
.super Ljava/lang/Object;
.source "NoneSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/none/NoneSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/security/none/NoneSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 348
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/security/none/NoneSecurity;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity$1;)V

    sput-object v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$Holder;->INSTANCE:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/security/none/NoneSecurity;
    .locals 1

    .line 347
    sget-object v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$Holder;->INSTANCE:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    return-object v0
.end method
