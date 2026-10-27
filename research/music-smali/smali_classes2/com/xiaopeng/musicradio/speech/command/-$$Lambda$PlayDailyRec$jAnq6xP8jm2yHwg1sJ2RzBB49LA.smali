.class public final synthetic Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayDailyRec$jAnq6xP8jm2yHwg1sJ2RzBB49LA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayDailyRec$jAnq6xP8jm2yHwg1sJ2RzBB49LA;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayDailyRec$jAnq6xP8jm2yHwg1sJ2RzBB49LA;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;->lambda$jAnq6xP8jm2yHwg1sJ2RzBB49LA(Ljava/lang/String;)V

    return-void
.end method
