.class public Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;
.super Ljava/lang/Object;
.source "XUnitParsedBean.java"


# instance fields
.field private number:Ljava/lang/Number;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;->number:Ljava/lang/Number;

    .line 9
    iput-object p2, p0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/Number;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;->number:Ljava/lang/Number;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(F)V
    .locals 0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;->number:Ljava/lang/Number;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;->unit:Ljava/lang/String;

    return-void
.end method
