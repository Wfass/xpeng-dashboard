.class Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$1;
.super Ljava/lang/Object;
.source "OledMusicBookActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/ActionBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$1;->RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$1;->RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->setResult(I)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity$1;->RR:Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;->finish()V

    .line 59
    return-void
.end method
