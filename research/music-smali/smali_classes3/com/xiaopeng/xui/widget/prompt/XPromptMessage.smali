.class public Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;
.super Ljava/lang/Object;
.source "XPromptMessage.java"


# instance fields
.field private mButton:Ljava/lang/CharSequence;

.field private mDuration:I

.field private mIcon:I

.field private mId:Ljava/lang/String;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mDuration:I

    .line 22
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mDuration:I

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mText:Ljava/lang/CharSequence;

    .line 28
    iput p3, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mIcon:I

    .line 29
    iput-object p4, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mDuration:I

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mText:Ljava/lang/CharSequence;

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mButton:Ljava/lang/CharSequence;

    .line 36
    iput-object p4, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getButton()Ljava/lang/CharSequence;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mButton:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mDuration:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mIcon:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mButton:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDuration(I)Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mDuration:I

    return-object p0
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;
    .locals 0

    .line 59
    iput p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mIcon:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method
