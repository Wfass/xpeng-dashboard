.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->lambda$createAndPrepareMediaPlayer$2(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;I)V

    return-void
.end method
