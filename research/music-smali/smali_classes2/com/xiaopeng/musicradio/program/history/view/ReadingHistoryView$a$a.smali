.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/g;
.source "ReadingHistoryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field b:Lcom/xiaopeng/xui/widget/XTextView;

.field c:Lcom/xiaopeng/xui/widget/XTextView;

.field d:Lcom/xiaopeng/xui/widget/XTextView;

.field e:Lcom/xiaopeng/xui/widget/XImageView;

.field f:Lcom/xiaopeng/xui/widget/XImageView;

.field g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field h:Landroid/view/View;

.field i:Lcom/xiaopeng/xui/widget/XImageView;

.field j:Lcom/xiaopeng/xui/widget/XImageView;

.field k:Lcom/xiaopeng/xui/widget/XCheckBox;

.field l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

.field final synthetic m:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;Landroid/view/View;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->m:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    .line 124
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/g;-><init>(Landroid/view/View;)V

    .line 125
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->iv_pic:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 126
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 127
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_sub_title:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    .line 128
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_read_percent:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->d:Lcom/xiaopeng/xui/widget/XTextView;

    .line 129
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->iv_delete:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->e:Lcom/xiaopeng/xui/widget/XImageView;

    .line 130
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->btn_love:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->f:Lcom/xiaopeng/xui/widget/XImageView;

    .line 131
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->content_layout:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 132
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->item_layout:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->h:Landroid/view/View;

    .line 133
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->iv_icon_arrow:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 134
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_speech_num:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    .line 135
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->label_type_iv:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->j:Lcom/xiaopeng/xui/widget/XImageView;

    .line 136
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->cb_select:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XCheckBox;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->k:Lcom/xiaopeng/xui/widget/XCheckBox;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method
