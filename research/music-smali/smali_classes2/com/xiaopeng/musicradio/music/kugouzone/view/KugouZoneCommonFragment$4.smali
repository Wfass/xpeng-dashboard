.class Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;
.super Ljava/lang/Object;
.source "KugouZoneCommonFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->initMultiType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouZoneCommonFragment"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->access$400(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->access$300(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;I)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->access$200(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;I)V

    :goto_0
    return-void
.end method
