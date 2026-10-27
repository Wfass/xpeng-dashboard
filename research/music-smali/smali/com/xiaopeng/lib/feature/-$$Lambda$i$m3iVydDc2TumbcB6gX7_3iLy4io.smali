.class public final synthetic Lcom/xiaopeng/lib/feature/-$$Lambda$i$m3iVydDc2TumbcB6gX7_3iLy4io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/lib/feature/i;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lib/feature/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$i$m3iVydDc2TumbcB6gX7_3iLy4io;->f$0:Lcom/xiaopeng/lib/feature/i;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$i$m3iVydDc2TumbcB6gX7_3iLy4io;->f$0:Lcom/xiaopeng/lib/feature/i;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/feature/i;->lambda$m3iVydDc2TumbcB6gX7_3iLy4io(Lcom/xiaopeng/lib/feature/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
