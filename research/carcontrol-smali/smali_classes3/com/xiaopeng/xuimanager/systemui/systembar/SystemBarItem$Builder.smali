.class public Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
.super Ljava/lang/Object;
.source "SystemBarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mContext:Landroid/content/Context;

    .line 143
    new-instance p1, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-direct {p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$700(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setBarSmallIcon(I)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBarType(I)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$002(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$702(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public setFlags(I)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$502(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I

    return-object p0
.end method

.method public setIconKey(I)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$602(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I

    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$102(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I

    return-object p0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$302(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$402(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;->mBarItem:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->access$202(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I

    return-object p0
.end method
