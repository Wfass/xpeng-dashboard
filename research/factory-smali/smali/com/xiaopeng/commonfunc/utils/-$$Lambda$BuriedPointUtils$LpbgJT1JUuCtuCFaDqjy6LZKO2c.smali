.class public final synthetic Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;->f$2:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;->f$2:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/xiaopeng/commonfunc/utils/BuriedPointUtils;->lambda$sendDataLog$0(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
