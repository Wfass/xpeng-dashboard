.class public final synthetic Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$p83nh_zQDDCRRPYCcHv7Owo6YBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$p83nh_zQDDCRRPYCcHv7Owo6YBc;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$p83nh_zQDDCRRPYCcHv7Owo6YBc;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->lambda$notifyResourceUpdate$1(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;)V

    return-void
.end method
