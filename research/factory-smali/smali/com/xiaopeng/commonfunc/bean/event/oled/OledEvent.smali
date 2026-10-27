.class public Lcom/xiaopeng/commonfunc/bean/event/oled/OledEvent;
.super Ljava/lang/Object;
.source "OledEvent.java"


# static fields
.field public static final MUSIC_COMPLETE:I = 0x2

.field public static final MUSIC_ERROR:I = 0x3

.field public static final MUSIC_PLAY:I = 0x1


# instance fields
.field public mMusicPlayStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/oled/OledEvent;->mMusicPlayStatus:I

    .line 17
    return-void
.end method
