.class public final synthetic Lcom/xiaopeng/aicabin/-$$Lambda$SnjTcFMFOe5Z7Z4uecNr9TvjhWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/ARemoteManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/ARemoteManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/-$$Lambda$SnjTcFMFOe5Z7Z4uecNr9TvjhWw;->f$0:Lcom/xiaopeng/aicabin/ARemoteManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/aicabin/-$$Lambda$SnjTcFMFOe5Z7Z4uecNr9TvjhWw;->f$0:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/ARemoteManager$c;->a(Lcom/xiaopeng/aicabin/ARemoteManager;)V

    return-void
.end method
