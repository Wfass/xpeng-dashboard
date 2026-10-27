.class public Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;
.super Ljava/lang/Object;
.source "CustomOledMusicBook.java"


# instance fields
.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private note:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "note"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->duration:I

    return v0
.end method

.method public getNote()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->note:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->duration:I

    .line 30
    return-void
.end method

.method public setNote(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->note:I

    .line 22
    return-void
.end method
