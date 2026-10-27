.class Lbms$4;
.super Ljava/lang/Object;
.source "ReadingMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbms;->d(ZIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lbms;


# direct methods
.method constructor <init>(Lbms;IIZLjava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lbms$4;->e:Lbms;

    iput p2, p0, Lbms$4;->a:I

    iput p3, p0, Lbms$4;->b:I

    iput-boolean p4, p0, Lbms$4;->c:Z

    iput-object p5, p0, Lbms$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 369
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    const-string v1, "key_cache_headspeach_record"

    invoke-virtual {v0, v1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    const-class v1, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    .line 371
    new-instance v1, Lbms$4$1;

    invoke-direct {v1, p0, v0}, Lbms$4$1;-><init>(Lbms$4;Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
