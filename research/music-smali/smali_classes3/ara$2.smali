.class Lara$2;
.super Ljava/lang/Object;
.source "AbsReissueOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lara;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

.field final synthetic b:Lara;


# direct methods
.method constructor <init>(Lara;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lara$2;->b:Lara;

    iput-object p2, p0, Lara$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lara$2;->b:Lara;

    iget-object v1, p0, Lara$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-virtual {v0, v1}, Lara;->b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    return-void
.end method
