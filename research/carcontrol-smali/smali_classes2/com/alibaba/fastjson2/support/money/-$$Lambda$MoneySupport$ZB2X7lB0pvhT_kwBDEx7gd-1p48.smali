.class public final synthetic Lcom/alibaba/fastjson2/support/money/-$$Lambda$MoneySupport$ZB2X7lB0pvhT_kwBDEx7gd-1p48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/money/-$$Lambda$MoneySupport$ZB2X7lB0pvhT_kwBDEx7gd-1p48;->f$0:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/support/money/-$$Lambda$MoneySupport$ZB2X7lB0pvhT_kwBDEx7gd-1p48;->f$0:Ljava/util/function/BiFunction;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/support/money/MoneySupport;->lambda$createNumberValueWriter$1(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method
