.class final Lcom/xiaopeng/xui/oswidget/Switch$1;
.super Landroid/util/FloatProperty;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/oswidget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/xiaopeng/xui/oswidget/Switch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1460
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/xiaopeng/xui/oswidget/Switch;)Ljava/lang/Float;
    .locals 0

    .line 1463
    invoke-static {p1}, Lcom/xiaopeng/xui/oswidget/Switch;->access$000(Lcom/xiaopeng/xui/oswidget/Switch;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1460
    check-cast p1, Lcom/xiaopeng/xui/oswidget/Switch;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/oswidget/Switch$1;->get(Lcom/xiaopeng/xui/oswidget/Switch;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/xiaopeng/xui/oswidget/Switch;F)V
    .locals 0

    .line 1468
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/oswidget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1460
    check-cast p1, Lcom/xiaopeng/xui/oswidget/Switch;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/oswidget/Switch$1;->setValue(Lcom/xiaopeng/xui/oswidget/Switch;F)V

    return-void
.end method
