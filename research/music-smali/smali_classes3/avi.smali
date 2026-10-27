.class public abstract Lavi;
.super Landroidx/databinding/ViewDataBinding;
.source "MineMusicItemLayoutBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/xui/widget/XCheckBox;

.field public final d:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

.field public final e:Lcom/xiaopeng/xui/widget/XImageView;

.field public final f:Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;

.field public final g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field public final h:Lcom/xiaopeng/xui/widget/XImageView;

.field public final i:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

.field public final j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field public final k:Lcom/xiaopeng/xui/widget/XTextView;

.field public final l:Lcom/xiaopeng/xui/widget/XImageView;

.field public final m:Lcom/xiaopeng/xui/widget/XTextView;

.field public final n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

.field public final o:Lcom/xiaopeng/xui/widget/XTextView;

.field public final p:Lcom/xiaopeng/xui/widget/XTextView;

.field public final q:Lcom/xiaopeng/xui/widget/XLinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XCheckBox;Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;Lcom/xiaopeng/xui/widget/XRelativeLayout;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XLinearLayout;)V
    .locals 2

    move-object v0, p0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 76
    iput-object v1, v0, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    move-object v1, p5

    .line 77
    iput-object v1, v0, Lavi;->d:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    move-object v1, p6

    .line 78
    iput-object v1, v0, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    move-object v1, p7

    .line 79
    iput-object v1, v0, Lavi;->f:Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;

    move-object v1, p8

    .line 80
    iput-object v1, v0, Lavi;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-object v1, p9

    .line 81
    iput-object v1, v0, Lavi;->h:Lcom/xiaopeng/xui/widget/XImageView;

    move-object v1, p10

    .line 82
    iput-object v1, v0, Lavi;->i:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    move-object v1, p11

    .line 83
    iput-object v1, v0, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    move-object v1, p12

    .line 84
    iput-object v1, v0, Lavi;->k:Lcom/xiaopeng/xui/widget/XTextView;

    move-object v1, p13

    .line 85
    iput-object v1, v0, Lavi;->l:Lcom/xiaopeng/xui/widget/XImageView;

    move-object/from16 v1, p14

    .line 86
    iput-object v1, v0, Lavi;->m:Lcom/xiaopeng/xui/widget/XTextView;

    move-object/from16 v1, p15

    .line 87
    iput-object v1, v0, Lavi;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    move-object/from16 v1, p16

    .line 88
    iput-object v1, v0, Lavi;->o:Lcom/xiaopeng/xui/widget/XTextView;

    move-object/from16 v1, p17

    .line 89
    iput-object v1, v0, Lavi;->p:Lcom/xiaopeng/xui/widget/XTextView;

    move-object/from16 v1, p18

    .line 90
    iput-object v1, v0, Lavi;->q:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;)Lavi;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_music_item_layout:I

    invoke-static {p1, p0, v0}, Lavi;->a(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lavi;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lavi;
    .locals 1

    .line 133
    invoke-static {}, Landroidx/databinding/f;->a()Landroidx/databinding/e;

    move-result-object v0

    invoke-static {p0, v0}, Lavi;->a(Landroid/view/View;Ljava/lang/Object;)Lavi;

    move-result-object p0

    return-object p0
.end method
