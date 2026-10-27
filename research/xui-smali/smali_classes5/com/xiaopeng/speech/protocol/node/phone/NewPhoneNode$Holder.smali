.class Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$Holder;
.super Ljava/lang/Object;
.source "NewPhoneNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;-><init>(Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$1;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$Holder;->Instance:Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$Holder;->Instance:Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;

    return-object v0
.end method
