.class Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;
.super Ljava/lang/Object;
.source "MusicNoteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter$a;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method
