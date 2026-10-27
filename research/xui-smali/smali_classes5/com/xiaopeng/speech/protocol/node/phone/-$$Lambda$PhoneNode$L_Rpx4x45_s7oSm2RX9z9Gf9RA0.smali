.class public final synthetic Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;->INSTANCE:Lcom/xiaopeng/speech/protocol/node/phone/-$$Lambda$PhoneNode$L_Rpx4x45_s7oSm2RX9z9Gf9RA0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->lambda$syncContactList$0(Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p1

    return-object p1
.end method
