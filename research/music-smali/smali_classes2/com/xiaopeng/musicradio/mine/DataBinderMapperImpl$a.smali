.class Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 408
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    .line 411
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_album_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_album_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_collected_music_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_collected_music_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_custom_detail_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_custom_detail_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_music_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_music_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_netradio_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_netradio_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_playlist_blue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_playlist_blue_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->activity_program_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/activity_program_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_album_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_album_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_collected_music_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_collected_music_list_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_collect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_mine_collect_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_history:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_mine_history_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_main:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_mine_main_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_playlist:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_mine_playlist_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_music_mine:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_music_mine_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_music_mine_history:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_music_mine_history_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_netradio_mine:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_netradio_mine_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_program_mine:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/fragment_program_mine_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_album_item_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/mine_album_item_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_mmusic_item_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/mine_mmusic_item_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_music_item_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/mine_music_item_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_netradio_item_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/mine_netradio_item_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_program_item_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/mine_program_item_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->netradio_mine_collected_fragment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/netradio_mine_collected_fragment_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->netradio_mine_history_fragment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/netradio_mine_history_fragment_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->playlist_blue_view:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/playlist_blue_view_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->playlist_user_item_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/playlist_user_item_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->program_collect_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/program_collect_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->program_history_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/program_history_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->program_mine_collected_fragment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/program_mine_collected_fragment_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->program_mine_history_fragment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/program_mine_history_fragment_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->radio_collect_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/radio_collect_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/xiaopeng/musicradio/mine/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->radio_history_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "layout/radio_history_layout_0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
